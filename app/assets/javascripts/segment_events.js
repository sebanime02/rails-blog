//= require application

$(function()
{
  console.log('Before click');

    $('.price-display').click(function()
    {
      //alert( "Click" );

    });

    $("#url_home").on('click',function()
      {
        var event_properties_1 =
        {
            category: 'Conversions',
            label: 'index_click_link',
            value: 0
        };

        track_events('Click Home analytics', event_properties_1);

      });


    $("#articles_index_detail_url").on('click',function()
      {
        var event_properties_2 =
        {
              category: 'Conversions',
              label: 'articles_index_list_click_link',
              value: 0
        };
        track_events('Click Edit List', event_properties_2);
      });


    function track_events(name, properties)
    {
      console.log(name+' Launched');
      analytics.track(name,properties);
    }

});
