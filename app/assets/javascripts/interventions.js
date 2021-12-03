//  This is the beginning of our interventions script
$(function() {
    // Hide all dropdowns on page load
    $("div#building-list").hide();
    $("div#battery-list").hide();
    $("div#column-list").hide();
    $("div#elevator-list").hide();

    // CUSTOMER
    $("select#customer").change(function() {
        // When a customer is selected from the dropdown, show the building dropdown
        $("div#building-list").show();

        // Grab the value (ie. id) of the current selected customer
        var customer_id = $(this).val();
        console.log(customer_id);

        // If the selected returns to ---Select---
        if (customer_id == "") {
            // Rehide the building dropdown
            $("div#building-list").hide();
            // Rehide any other dropdowns after it
            $("div#battery-list").hide();
            $("div#column-list").hide();
            $("div#elevator-list").hide();
            // Remove all the options from the list
            $("select#building option").remove();
        } else {
            // Send the request and update building dropdown
            $.ajax({
                dataType: "json",
                cache: false,
                url: '/get_buildings_by_customer/' + customer_id,
                timeout: 5000,
                error: function(XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to reach submit : " + errorTextStatus + " ;" + error);
                },
                success: function(data) { // The 'data' variable SHOULD hold the json object you just requested (ie. @buildings)
                    // If a different customer is instead selected, clear all the options from the building select
                    $("select#building option").remove();
                    //put in a empty default line
                    var def_row = "<option value=\"" + "" + "\">" + "--- Select ---" + "</option>";
                    $(def_row).appendTo("select#building");
                    // Fill building select
                    $.each(data, function(i, j) { // data = @buildings, i = index (ie. 0, 1, 2), j = the current building
                        // Create a new <option> element for a building
                        var row = "<option value=\"" + j.id + "\">" + "ID: " + j.id + "</option>";
                        // Append the <option> element to the <select>
                        $(row).appendTo("select#building");
                    });
                }
            });
        }
    }); // End CUSTOMER

    // BUILDING
    $("select#building").change(function() {
        // When a building is selected from the dropdown, show the battery dropdown
        $("div#battery-list").show();

        // Grab the value (ie. id) of the current selected building
        var building_id = $(this).val();
        console.log(building_id);

        // If the selected option is ---Select---
        if (building_id == "") {
            // Rehide the battery dropdown
            $("div#battery-list").hide();
            // Rehide any other dropdowns after it
            $("div#column-list").hide();
            $("div#elevator-list").hide();
            // Remove all the options from the list
            $("select#battery option").remove();
        } else {
            // Send the request and update battery dropdown
            $.ajax({
                dataType: "json",
                cache: false,
                url: '/get_batteries_by_building/' + building_id,
                timeout: 5000,
                error: function(XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to reach submit : " + errorTextStatus + " ;" + error);
                },
                success: function(data) { // The 'data' variable SHOULD hold the json object you just requested (ie. @batteries)
                    // If a different building is instead selected, clear all options from battery select
                    $("select#battery option").remove();
                    //put in a empty default line
                    var def_row = "<option value=\"" + "" + "\">" + "None" + "</option>";
                    $(def_row).appendTo("select#battery");
                    // Fill battery select
                    $.each(data, function(i, j) { // data = @batteries, i = index (ie. 0, 1, 2), j = the current battery
                        // Create a new <option> element for a building
                        var row = "<option value=\"" + j.id + "\">" + "ID: " + j.id + " - " + j.status + "</option>";
                        // Append the <option> element to the <select>
                        $(row).appendTo("select#battery");
                    });
                }
            });
        }
    }); // End BUILDING

    // BATTERY
    $("select#battery").change(function() {
        // When a battery is selected from the dropdown, show the column dropdown
        $("div#column-list").show();

        // Grab the value (ie. id) of the current selected battery
        var battery_id = $(this).val();
        console.log(battery_id);

        // If the selected option is ---Select---
        if (battery_id == "") {
            // Rehide the column dropdown
            $("div#column-list").hide();
            // Hide any other dropdowns after it
            $("div#elevator-list").hide();
            // Remove all the options from the list
            $("select#column option").remove();
        } else {
            // Send the request and update column dropdown
            $.ajax({
                dataType: "json",
                cache: false,
                url: '/get_columns_by_batteries/' + battery_id,
                timeout: 5000,
                error: function(XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to reach submit : " + errorTextStatus + " ;" + error);
                },
                success: function(data) { // The 'data' variable SHOULD hold the json object you just requested (ie. @columns)
                    // If a different battery is instead selected, clear all options from column select
                    $("select#column option").remove();
                    //put in a empty default line
                    var def_row = "<option value=\"" + "" + "\">" + "None" + "</option>";
                    $(def_row).appendTo("select#column");
                    // Fill column select
                    $.each(data, function(i, j) { // data = @columns, i = index (ie. 0, 1, 2), j = the current column
                        // Create a new <option> element for a column
                        var row = "<option value=\"" + j.id + "\">" + "ID: " + j.id + " - " + j.status + "</option>";
                        // Append the <option> element to the <select>
                        $(row).appendTo("select#column");
                    });
                }
            });
        }
    }); // End BATTERY

    // COLUMN
    $("select#column").change(function() {
        // When a column is selected from the dropdown, show the elevator dropdown
        $("div#elevator-list").show();

        // Grab the value (ie. id) of the current selected column
        var column_id = $(this).val();
        console.log(column_id);

        // If the selected option is ---Select---
        if (column_id == "") {
            // Rehide the elevator dropdown
            $("div#elevator-list").hide();
            // Remove all the options from the list
            $("select#elevator option").remove();
        } else {
            // Send the request and update elevator dropdown
            $.ajax({
                dataType: "json",
                cache: false,
                url: '/get_elevators_by_columns/' + column_id,
                timeout: 5000,
                error: function(XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to reach submit : " + errorTextStatus + " ;" + error);
                },
                success: function(data) { // The 'data' variable SHOULD hold the json object you just requested (ie. @elevators)
                    // If a different column is instead selected, clear all options from elevator select
                    $("select#elevator option").remove();
                    //put in a empty default line
                    var def_row = "<option value=\"" + "" + "\">" + "None" + "</option>";
                    $(def_row).appendTo("select#elevator");
                    // Fill elevator select
                    $.each(data, function(i, j) { // data = @elevators, i = index (ie. 0, 1, 2), j = the current elevator
                        // Create a new <option> element for an elevator
                        var row = "<option value=\"" + j.id + "\">" + "ID: " + j.id + " - " + j.status + "</option>";
                        // Append the <option> element to the <select>
                        $(row).appendTo("select#elevator");
                    });
                }
            });
        }
    }); // End COLUMN
});