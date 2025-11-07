let trilho = document.getElementById('trilho')
let body = document.querySelector('body')

trilho.addEventListener('click', ()=>{
    trilho.classList.toggle('dark')
    body.classList.toggle('dark')
})


document.getElementById("formContato").addEventListener("submit", function(event) {
      event.preventDefault();

      const nome = document.getElementById("nome").value.trim();
      const email = document.getElementById("email").value.trim();
      const mensagem = document.getElementById("mensagem").value.trim();

      if (!nome || !email || !mensagem) {
        alert("Por favor, preencha todos os campos.");
        return;
      }

      if (!email.includes("@") || !email.includes(".")) {
        alert("Digite um email válido.");
        return;
      }

      alert("Mensagem enviada com sucesso! ✅");
      this.reset();
    });

/* Menu abri e fecha */
let btnMenu = document.getElementById('btn-menu')
let menu = document.getElementById ('menu-mobile')


    btnMenu.addEventListener('click', ()=>{
        menu.classList.add('abrir-menu')
    })

    menu.addEventListener('click', ()=>{
        menu.classList.remove('abrir-menu')
    })


     window.revelar = ScrollReveal({reset:true})

     revelar.reveal('.efeitosofia',{
      duration: 2000,
      distance: '90px',
      
    })


    revelar.reveal('.efeitosofia2',{
      duration: 2000,
      distance: '90px',
      delay: 500
    })

    revelar.reveal('.efeitosofia3',{
      duration: 2000,
      distance: '90px',
      delay: 600
    })


    revelar.reveal('.efeito-mysql',{
      duration: 2000,
      distance: '90px',
      delay: 500,
      origin: 'left'
    })


    revelar.reveal('.efeito-C',{
      duration: 2000,
      distance: '90px',
      delay: 500,
      origin: 'right'
    })