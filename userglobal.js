window.addEventListener('load',()=>{
    const params = (new URL(document.location)).searchParams;
    const name = params.get('globalu');

    document.getElementById('username').innerHTML = name;
})