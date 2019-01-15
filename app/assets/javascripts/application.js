// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require bootstrap-datetimepicker
//= require popper
//= require jquery
//= require jquery-ui
//= require jquery-ui/widgets/autocomplete
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require pickadate/picker
//= require pickadate/picker.date
//= require_tree .
$('.datepicker').pickadate()
var app = window.app={};

app.Products = function(){
    this._input = $('#products-search-txt');
    this._initAutocomplete();
};
app.Products.prototype ={
    _initAutocomplete: function() {
        this._input
            .autocomplete({
                source: '/products',
                appendTo: '#products-search-results',
                select: $.proxy(this._select, this)
            })
            .autocomplete('instance')._renderItem = $.proxy(this._render, this);
    },
    _select: function(e, ui) {
        this._input.val(ui.item.name);
        return false;
    },
    _render: function(ul, item) {
        var markup = [
            // '<span class="img">',
            // '<img src="' + item.image_url + '" />',
            // '</span>',
            '<span class="name">' + item.name + '</span>',
            '<span class="volumn">' + item.volumn + '</span>',
            '<span class="price">' + item.price + '</span>'

        ];
        return $('<li style="list-style: none;cursor: pointer">')
            .append(markup.join(''))
            .appendTo(ul);
    }


};