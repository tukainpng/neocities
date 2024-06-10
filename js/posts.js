let headings = document.querySelectorAll("h1, h2, h3")

document.write('<div class="headings"><ul>')
  for (let i = 0; i < headings.length; i++) {
    headings[i].id = headings[i].innerHTML
    document.write('<li><a href="#' + headings[i].innerHTML + '">')
    document.write(headings[i].innerHTML + '</a></li>')
  }
document.write("<ul></div>")
