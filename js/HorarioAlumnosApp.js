let params = new URLSearchParams(location.search);
var contract = params.get('id');

new Vue({
    el: '#app',
    vuetify: new Vuetify(),
    data: {
            id: contract,
            horarios:[],
            horariosInicial:[],
      
    },
    created(){
        this.mostrarHorario()
    },

    methods: {   
        
         mostrarHorario: function () {
            axios.post("../php/HorarioAlumnos.php",{
                id: this.id
            }).then(response =>{
                this.horariosInicial = response.data;
                console.log(this.horariosInicial);
                this.Ordenar();
            })
            
        },
        
        
        Ordenar(){
            for(soli of this.horariosInicial){
                this.horarios.push({
                Curso: soli.Curso,
                dia: soli.dia,
                hora_inicio: soli.hora_inicio,
                hora_fin: soli.hora_fin,
                Grupo: soli.Grupo,
                Aula: soli.Aula,
                Profesor: soli.Profesor,
                Edificio: soli.Edificio,
                Ubicacion: soli.Ubicacion,
                show:false,
                showUbicacion:false,
                showProfesor:false
                });
            }
        },
    },
    computed: {
       
    }
});