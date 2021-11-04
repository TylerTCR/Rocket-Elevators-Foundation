require 'pg'

namespace :export_data do
    desc "export data from mysql and import it into pgsql"
    task :mysql => :environment do
        connection = PG::Connection.open(host: "localhost", port: 5432, dbname: "myapp_development", user: "root", password: "password")

        connection.exec("TRUNCATE fact_contact RESTART IDENTITY")
        Lead.all.each do |lead|
            connection.exec("INSERT INTO \"fact_contact\" (contact_id, creation_date, company_name, email, project_name) 
            VALUES (#{lead.id}, '#{lead.created_at}', '#{lead.company_name}', '#{lead.email}', '#{lead.project_name}')")
        end

    end

end