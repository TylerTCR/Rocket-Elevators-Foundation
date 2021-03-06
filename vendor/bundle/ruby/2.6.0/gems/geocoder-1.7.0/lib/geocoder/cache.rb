module Geocoder
  class Cache

    def initialize(store, prefix)
      @store = store
      @prefix = prefix
    end

    ##
    # Read from the Cache.
    #
    def [](url)
      interpret case
        when store.respond_to?(:[])
          store[key_for(url)]
        when store.respond_to?(:get)
          store.get key_for(url)
        when store.respond_to?(:read)
          store.read key_for(url)
      end
    rescue => e
      warn "Geocoder cache read error: #{e}"
    end

    ##
    # Write to the Cache.
    #
    def []=(url, value)
      case
        when store.respond_to?(:[]=)
          store[key_for(url)] = value
        when store.respond_to?(:set)
          store.set key_for(url), value
        when store.respond_to?(:write)
          store.write key_for(url), value
      end
    rescue => e
      warn "Geocoder cache write error: #{e}"
    end

    ##
    # Delete cache entry for given URL,
    # or pass <tt>:all</tt> to clear all URLs.
    #
    def expire(url)
      if url == :all
        if store.respond_to?(:keys)
          urls.each{ |u| expire(u) }
        else
          raise(NoMethodError, "The Geocoder cache store must implement `#keys` for `expire(:all)` to work")
        end
      else
        expire_single_url(url)
      end
    end


    private # ----------------------------------------------------------------

    def prefix; @prefix; end
    def store; @store; end

    ##
    # Cache key for a given URL.
    #
    def key_for(url)
      if url.match(/^#{prefix}/)
        url
      else
        [prefix, url].join
      end
    end

    ##
    # Array of keys with the currently configured prefix
    # that have non-nil values.
    #
    def keys
      store.keys.select{ |k| k.match(/^#{prefix}/) and self[k] }
    end

    ##
    # Array of cached URLs.
    #
    def urls
      keys.map{ |k| k[/^#{prefix}(.*)/, 1] }
    end

    ##
    # Clean up value before returning. Namely, convert empty string to nil.
    # (Some key/value stores return empty string instead of nil.)
    #
    def interpret(value)
      value == "" ? nil : value
    end

    def expire_single_url(url)
      key = key_for(url)
      store.respond_to?(:del) ? store.del(key) : store.delete(key)
    end
  end
end
