#= require '../app_init'

app = angular.module 'app'

app.filter 'capitalize', ->
  (string) ->
    return "" unless string?
    string.charAt(0).toUpperCase() + string.slice(1)

app.filter 'escapeUrl', ->
  (url) ->
    return "" unless url
    escape url

app.filter 'stripHtml', ->
  (html) ->
    return "" unless html
    angular.element("<div>#{html}</div>").text().trim()

app.filter 'ensureDigits', ->
  (str, digits) ->
    return '' unless str
    str = "#{str}" # ensure is a string; numbers don't have a .length [BT]
    while str.length < digits
      str = "0#{str}"
    str

app.filter 'truncate', ->
  (string, num) ->
    string ?= ""
    num ?= 100
    if string.length <= num
      string
    else
      string.substr(0, num) + "..."

app.filter 'reverse', ->
  (arry) ->
    arry ?= []
    arry.concat().reverse()

app.filter 'formatBytes', ->
  (bytes) ->
    # TODO: Re-angularize this filter code once curation.js is angularized.
    return formatBytesFilter(bytes)

# UTM URL builders
app.filter 'addUrlParams', ->
  (url, param) ->
    return '' unless url
    if url.match(/\?/)
      strings = "#{url}".split('?')
      # if strings.length > 1
      #   param = "#{param}&#{strings[1]}"
      param = "#{param}&#{strings[1]}"
      url = "#{strings[0]}?#{param}"
    else
      url = "#{url}?#{param}"
    url

app.filter 'utmUrl', ($filter) ->
  addUrlParams = $filter('addUrlParams')
  (url, campaign, medium, source, content = null) ->
    return '' unless url
    param = "utm_campaign=#{campaign}&utm_medium=#{medium}&utm_source=#{source}"
    if content
      param = "#{param}&utm_content=#{content}"
    addUrlParams(url,param)

app.filter 'utmActivityFeed', ($filter) ->
  utmUrl = $filter('utmUrl')
  (url, item, device, content = null) ->
    return '' unless url
    utmUrl(url, "lst", "activity_feed","#{device}_#{item.type.toLowerCase()}", content)
