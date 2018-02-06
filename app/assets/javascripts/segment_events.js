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
        track_events('Order completed', properties);
      });



    function track_events(name, properties)
    {
      analytics.track(name,properties);
    }

});
