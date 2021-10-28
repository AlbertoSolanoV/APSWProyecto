-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2020 a las 22:13:30
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ghc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `cod_aula` int(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `cod_edificio` int(11) NOT NULL,
  `cod_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id_carrera` int(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `id_director_carrera` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `id_carrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificios`
--

CREATE TABLE `edificios` (
  `cod_edificio` int(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `num_aulas` int(11) NOT NULL,
  `pisos` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `cod_grupo` int(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `tamaño` int(11) NOT NULL,
  `cod_horario` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_x_aula`
--

CREATE TABLE `grupo_x_aula` (
  `cod_aula` int(11) NOT NULL,
  `cod_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_x_estudiante`
--

CREATE TABLE `grupo_x_estudiante` (
  `cod_grupo_x_estudiante` int(100) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `cod_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `cod_horario` int(100) NOT NULL,
  `dia` date NOT NULL,
  `hora_inicio` int(11) NOT NULL,
  `hora_fin` int(11) NOT NULL,
  `cod_oferta` int(11) NOT NULL,
  `cod_periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertaacademica`
--

CREATE TABLE `ofertaacademica` (
  `cod_oferta` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `fecha_inicio` int(100) NOT NULL,
  `fecha_fin` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE `periodos` (
  `cod_periodo` int(100) NOT NULL,
  `nom_periodo` varchar(100) NOT NULL,
  `año` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `nombre`, `apellidos`, `correo`, `telefono`, `direccion`, `foto`, `id_rol`) VALUES
(118210940, 'Alberto', 'Solano Villalta', 'alberto.solano.villalta@cuc.cr', 87918947, 'Dulce Nombre, Cartago', 'alberto.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_x_curso`
--

CREATE TABLE `profesor_x_curso` (
  `cod_profesor_curso` int(100) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `descripcion`) VALUES
(1, 'Profesor'),
(2, 'Estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_permiso`
--

CREATE TABLE `rol_permiso` (
  `id_rol_permiso` int(100) NOT NULL,
  `id_permiso` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `CodSolicitud` int(11) NOT NULL,
  `Grupo` int(11) NOT NULL,
  `CapacidadExtra` int(11) NOT NULL,
  `UserEnvio` int(11) NOT NULL,
  `UserRecibo` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_aula`
--

CREATE TABLE `tipo_de_aula` (
  `cod_tipo` int(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(100) NOT NULL,
  `contraseña` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `contraseña`) VALUES
(118210940, 0x4236383641433938333342334141343338343344343337384642393145433133);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`cod_aula`),
  ADD KEY `cod_edificio` (`cod_edificio`),
  ADD KEY `cod_tipo` (`cod_tipo`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id_carrera`),
  ADD KEY `id_director_carrera` (`id_director_carrera`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `id_carrera` (`id_carrera`);

--
-- Indices de la tabla `edificios`
--
ALTER TABLE `edificios`
  ADD PRIMARY KEY (`cod_edificio`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`cod_grupo`),
  ADD KEY `cod_horario` (`cod_horario`),
  ADD KEY `id_profesor` (`id_profesor`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `grupo_x_aula`
--
ALTER TABLE `grupo_x_aula`
  ADD KEY `cod_grupo` (`cod_grupo`),
  ADD KEY `cod_aula` (`cod_aula`);

--
-- Indices de la tabla `grupo_x_estudiante`
--
ALTER TABLE `grupo_x_estudiante`
  ADD PRIMARY KEY (`cod_grupo_x_estudiante`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `cod_grupo` (`cod_grupo`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`cod_horario`),
  ADD KEY `cod_oferta` (`cod_oferta`),
  ADD KEY `cod_periodo` (`cod_periodo`);

--
-- Indices de la tabla `ofertaacademica`
--
ALTER TABLE `ofertaacademica`
  ADD PRIMARY KEY (`cod_oferta`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`cod_periodo`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `profesor_x_curso`
--
ALTER TABLE `profesor_x_curso`
  ADD PRIMARY KEY (`cod_profesor_curso`),
  ADD KEY `id_profesor` (`id_profesor`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `rol_permiso`
--
ALTER TABLE `rol_permiso`
  ADD PRIMARY KEY (`id_rol_permiso`),
  ADD KEY `id_permiso` (`id_permiso`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`CodSolicitud`),
  ADD KEY `Grupo` (`Grupo`),
  ADD KEY `UserEnvio` (`UserEnvio`),
  ADD KEY `UserRecibo` (`UserRecibo`);

--
-- Indices de la tabla `tipo_de_aula`
--
ALTER TABLE `tipo_de_aula`
  ADD PRIMARY KEY (`cod_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `cod_aula` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id_carrera` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `edificios`
--
ALTER TABLE `edificios`
  MODIFY `cod_edificio` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `cod_grupo` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupo_x_estudiante`
--
ALTER TABLE `grupo_x_estudiante`
  MODIFY `cod_grupo_x_estudiante` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `cod_horario` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ofertaacademica`
--
ALTER TABLE `ofertaacademica`
  MODIFY `cod_oferta` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `cod_periodo` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profesor_x_curso`
--
ALTER TABLE `profesor_x_curso`
  MODIFY `cod_profesor_curso` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rol_permiso`
--
ALTER TABLE `rol_permiso`
  MODIFY `id_rol_permiso` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_aula`
--
ALTER TABLE `tipo_de_aula`
  MODIFY `cod_tipo` int(100) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `aulas_ibfk_1` FOREIGN KEY (`cod_edificio`) REFERENCES `edificios` (`cod_edificio`),
  ADD CONSTRAINT `aulas_ibfk_2` FOREIGN KEY (`cod_tipo`) REFERENCES `tipo_de_aula` (`cod_tipo`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`id_director_carrera`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`);

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`cod_horario`) REFERENCES `horario` (`cod_horario`),
  ADD CONSTRAINT `grupos_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `grupos_ibfk_3` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`);

--
-- Filtros para la tabla `grupo_x_aula`
--
ALTER TABLE `grupo_x_aula`
  ADD CONSTRAINT `grupo_x_aula_ibfk_1` FOREIGN KEY (`cod_grupo`) REFERENCES `grupos` (`cod_grupo`),
  ADD CONSTRAINT `grupo_x_aula_ibfk_2` FOREIGN KEY (`cod_aula`) REFERENCES `aulas` (`cod_aula`);

--
-- Filtros para la tabla `grupo_x_estudiante`
--
ALTER TABLE `grupo_x_estudiante`
  ADD CONSTRAINT `grupo_x_estudiante_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `grupo_x_estudiante_ibfk_2` FOREIGN KEY (`cod_grupo`) REFERENCES `grupos` (`cod_grupo`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`cod_oferta`) REFERENCES `ofertaacademica` (`cod_oferta`),
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`cod_oferta`) REFERENCES `ofertaacademica` (`cod_oferta`),
  ADD CONSTRAINT `horario_ibfk_3` FOREIGN KEY (`cod_periodo`) REFERENCES `periodos` (`cod_periodo`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `profesor_x_curso`
--
ALTER TABLE `profesor_x_curso`
  ADD CONSTRAINT `profesor_x_curso_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `profesor_x_curso_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `profesor_x_curso_ibfk_3` FOREIGN KEY (`id_profesor`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `profesor_x_curso_ibfk_4` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`);

--
-- Filtros para la tabla `rol_permiso`
--
ALTER TABLE `rol_permiso`
  ADD CONSTRAINT `rol_permiso_ibfk_1` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id_permiso`),
  ADD CONSTRAINT `rol_permiso_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `solicitudes_ibfk_1` FOREIGN KEY (`UserEnvio`) REFERENCES `personas` (`id_persona`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitudes_ibfk_2` FOREIGN KEY (`UserRecibo`) REFERENCES `personas` (`id_persona`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitudes_ibfk_3` FOREIGN KEY (`Grupo`) REFERENCES `grupos` (`cod_grupo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `personas` (`id_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
