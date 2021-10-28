new Vue({
    el: '#app',
    vuetify: new Vuetify(),
    data: {
        SoliMensajes: [{
                id: 1,
                titulo: 'Solicitudes de Tecnologias de la Informacion',
                Mensaje: 'Mensaje de la solicitud, Mensaje de la solicitud Mensaje de la solicitud Mensaje de la solicitud Mensaje de la solicitud Mensaje de la solicitud ',
                Asunto: 'Solicitud para el aula 10-A',
                quien: 'Pepito'
            },
            {
                id: 2,
                titulo: 'Solicitudes de Tecnologias de la Informacion',
                Mensaje: 'Mensaje de la solicitud',
                Asunto: 'Solicitud para el aula 10-A',
                quien: 'Pepito'

            },
            {
                id: 3,
                titulo: 'Solicitudes de Tecnologias de la Informacion',
                Mensaje: 'Mensaje de la solicitud',
                Asunto: 'Solicitud para el aula 10-A',
                quien: 'Pepito'

            }
        ],
        VistoMensajes: [{
                id: 1,
                titulo: 'Vistas Solicitudes de Tecnologias de la Informacion',
                Mensaje: ' Vistas Mensaje de la solicitud',
                Asunto: 'Solicitud para el aula 10-A',
                quien: 'Pepito'
            },
            {
                id: 2,
                titulo: 'Vistas Solicitudes de Tecnologias de la Informacion',
                Mensaje: 'Vistas Mensaje de la solicitud',
                Asunto: 'Solicitud para el aula 10-A',
                quien: 'Pepito'

            },
            {
                id: 3,
                titulo: 'Vistas Solicitudes de Tecnologias de la Informacion',
                Mensaje: 'Vistas Mensaje de la solicitud',
                Asunto: 'Solicitud para el aula 10-A',
                quien: 'Pepito'

            }
        ],
        UserName: 'Alberto',
        dialog: false,
        visto: true,
        cod: 0,
        tip: false,
        snackbar: false, //para el mensaje del snackbar   
        textSnack: 'texto snackbar', //texto que se ve en el snackbar 

    },
    methods: {

        aceptarSolicitud() {

            this.snackbar = true
            this.textSnack = 'Se acepto la solicitud.'

        },
        denegarSolicitud() {

            this.snackbar = true
            this.textSnack = 'Se denego la solicitud.'

        }

    },
    computed: {

        darTitulo() {
            console.log(this.tip);

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
        darAsunto() {
            console.log(this.tip);

            if (this.tip) {
                for (soli of this.SoliMensajes) {
                    if (soli.id == this.cod) {
                        console.log(this.cod);
                        return soli.Asunto;
                    }
                }

            }
            if (!this.tip) {
                for (solis of this.VistoMensajes) {
                    if (solis.id == this.cod) {
                        console.log(this.cod);
                        return solis.Asunto;
                    }
                }
            }
            return "";
        },
        darDescripc() {
            console.log(this.tip);

            if (this.tip) {
                for (soli of this.SoliMensajes) {
                    if (soli.id == this.cod) {
                        console.log(this.cod);
                        return soli.Mensaje;
                    }
                }

            }
            if (!this.tip) {
                for (solis of this.VistoMensajes) {
                    if (solis.id == this.cod) {
                        console.log(this.cod);
                        return solis.Mensaje;
                    }
                }
            }
            return "";
        },

    }
}, )