# Introducing the Ferrexi gem

The Ferrexi gem is intended for scraping a website which relies upon javascript to render the content. 

    require 'ferrexi'

    url = 'https://www.arcgis.com/apps/opsdashboard/index.html#/ae5dda8f86814ae99dde905d2a9070ae'

    doc = Ferrexi.new(url).to_doc
    puts doc.xml pretty: true
    File.write '/tmp/ferrum2.html', doc.xml(pretty: true)

    svg  = doc.root.xpath('//svg')

    total_cases = svg[1].text('text')
    #=> 1.391

    new_cases = svg[2].text('g[2]/svg/text')
    #=> 330

    total_deaths = svg[4].text('g[2]/svg/text')
    #=> 35

In the above example the website *COVID-19 Mobile Dashboard* is scraped for the UK cases, including total, new cases, and total deaths.

## Resources

* ferrexi https://rubygems.org/gems/ferrexi

ferrexi webscraper scraper
