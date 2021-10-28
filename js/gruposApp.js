
   new Vue({
    el: '#app',
    vuetify: new Vuetify(),
    data: {
        dialog: false,
        HorarioEstudiantes: [{
                id: 1,
                Horario: 'Lunes 8:00 - 11:40',
                Materia: 'Comunicación Oral y Escrita',
                Grupo: '1',
                Aula: 'A-16',
                Profesor:'Pepito Profe',
                Ubicacion:'Al lado del baño de hombres',
                Coordenadas:'L:0 A:0',
                show:false,
                showubi:false,
                showprofe:false
            },
            {
                id: 2,
                Horario: 'Martes 8:00 - 11:40',
                Materia: 'Comunicación Oral y Escrita',
                Grupo: '2',
                Aula: 'A-17',
                Profesor:'Pepito Profe',
                Ubicacion:'Al lado del baño de hombres',
                Coordenadas:'L:0 A:0',
                show:false,
                showubi:false,
                showprofe:false

            },
            {
                id: 3,
                Horario: 'Miercoles 8:00 - 11:40',
                Materia: 'Comunicación Oral y Escrita',
                Grupo: '3',
                Aula: 'A-18',
                Profesor:'Pepito Profe',
                Ubicacion:'Al lado del baño de hombres',
                Coordenadas:'9.861, -83.926',
                show:false,
                showubi:false,
                showprofe:false

            },
            {
                id: 4,
                Horario: 'Miercoles 8:00 - 11:40',
                Materia: 'Comunicación Oral y Escrita',
                Grupo: '3',
                Aula: 'A-18',
                Profesor:'Pepito Profe',
                Ubicacion:'Al lado del baño de hombres',
                Coordenadas:'9.861, -83.926',
                show:false,
                showubi:false,
                showprofe:false

            },
        ],

        InfoPofre: [{
            id: 1,
            Imagen: 'img.png',
            Nombre: 'Julio Porfe',
            Correo: 'julioprofe@cuc.cr'
            
        },
        {
            id: 2,
            Imagen: 'img.png',
            Nombre: 'Julio Porfe',
            Correo: 'julioprofe@cuc.cr'
         

        },
        {
            id: 3,
            Imagen: 'img.png',
            Nombre: 'Julio Porfe',
            Correo: 'julioprofe@cuc.cr'
           

        }
    ],editado: {
      id: '',
      titulo: '',
      encargado: '',
      descripcion: '',
    },

        UserName: 'Alberto',
        idhora: 0,
        
        Lat:9.861,
        Long:-83.926
    },
    methods: {
        src:function(){
          return  this.url = "https://maps.google.com/maps/embed/v1/place?key=AIzaSyDW6-j8S7v1SDU5nauWoBzJWqEBzRNaZm4&q="+this.Lat+","+this.Long+"";
           
        }
     

    },
    computed: {
        
         formTitle() {
      //operadores condicionales "condición ? expr1 : expr2"
      // si <condicion> es true, devuelve <expr1>, de lo contrario devuelve <expr2>    
      return this.editedIndex === -1 ? 'Ingresar manualmente grupos' : 'Ingresar manualmente grupos'
    },
   
        darNombreProfe() {
            console.log(this.idhora);

            if (this.tip) {
                for (soli of this.SoliMensajes) {
                    if (soli.id == this.cod) {
                        console.log(this.cod);
                        return soli.titulo;
                    }
                }

            }
            if (!this.tip) {
                for (solis of this.VistoMensajes) {
                    if (solis.id == this.cod) {
                        console.log(this.cod);
                        return solis.titulo;
                    }
                }
            }
            return "";
        },
    }
   
} )
