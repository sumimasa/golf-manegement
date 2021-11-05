function reserve (){
  const submit=document.getElementById('submit')
  submit.addEventListener('click',(e)=>{
    e.preventDefault()
    const form =document.getElementById('reserve-form')
    const formData = new FormData(form)
    const XHR = new XMLHttpRequest()
    XHR.open("POST","/reserves",true)
    XHR.responseType="json"
    XHR.send(formData)
    XHR.onload = () =>{
      const list = document.getElementById('golf-course-names')
      const names = XHR.response.items
      const html=`
      <% names.each do |name| %>
        <%= link_to name.course_name,"name.url"%>
      <% end %>`
      list.insertAdjacentHTML("afterend",html)
    }
  })
}
window.addEventListener('load',reserve)