# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/ 

$.extend site:{}

$.extend $.site,
  my_template : (data,$template,$contaniner) -> 
    $contaniner.empty()
    this.my_template_append(data,$template,$contaniner) 

  my_template_append : (data,$template,$contaniner) ->
    temp = $template.html()
    this.repla(item,temp,$contaniner) for item in data 

  repla : (item,temp,$contaniner) ->
    for key,val of item
      reg = new RegExp("@{"+key+"}","gi")
      temp = temp.replace(reg,val)
    $contaniner.append(temp)
 

$.extend $.site,
  my_template2 : (data,$template,$contaniner) -> 
    $contaniner.empty()
    this.my_template_append(data,$template,$contaniner) 


 