//= require application

$(function()
{
  console.log('Before click');

  $("a #articles_index_detail_url").on('click',function()
    {
        var properties = {revenue: 33};
        console.log('Order completed');
        track_events('Order completed', properties);
    });

    $("#url_home").on('click',function()
      {
        var event_properties_1 = {revenue: 33};

        var event_properties_2 =
        {
            category: 'Account',
            label: 'Premium',
            value: 50
          };

        track_events('Url home adwords', event_properties_1);
        track_events('Url home analytics',event_properties_2);

      });

    function track_events(name, properties)
    {
      console.log(name+' Launched');
      analytics.track(name,properties);
    }

});
