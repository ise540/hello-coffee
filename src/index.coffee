import img from "./assets/coffee-image.jpg"

container = document.querySelector(".container")
coffeeImg = document.querySelector(".coffee-img")

coffeeImg.setAttribute("src", img)

changeCoffeeContainer = -> 
  helloText = document.createElement("span")
  helloText.textContent = "Привет, кофе!"
  helloText.setAttribute("style", "font-size:40px; color: red")
  container.removeChild(coffeeImg)
  container.append(helloText)
  container.removeEventListener("click", changeCoffeeContainer)

container.addEventListener("click", changeCoffeeContainer);
