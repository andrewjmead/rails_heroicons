[Read in English](README.md)

# Rails Heroicons
Usa iconos de [heroicons.com](https://heroicons.com) en tus aplicaciones de Rails.

## Instalación
Agrega esta línea en el Gemfile de tu aplicación:


```ruby
gem 'rails_heroicons', '~> 0.4.0'
```

Y luego ejecuta:
```bash
$ bundle
```

O instalalo tu mismo así:
```bash
$ gem install rails_heroicons
```

## Usabilidad

### Agregar un ícono


Antes de agregar un ícono, necesitas encontrar el nombre del icono. Dirígete a [heroicons.com](https://heroicons.com) para la lista completa de íconos.

Esta gema te provee con una única nueva 'Rails helper' llamada `heroicon`. You use `heroicon` en tus plantillas para agregar un ícono:

```erb
<%= heroicon('user') %>
```

Esto incrustará el siguiente código HTML para dibujar el ícono:

```erb
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
  <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"/>
</svg>
```

### Agregar una clase

Tu puedes agregar una clase al SVG para cambiar los estilos del ícono. Esto se hacer usando la opción `class_name`:

```erb
<%= heroicon('user', class_name: 'icon icon-large') %>
```

Esto incrustará el siguiente código HTML para dibujar el ícono:

```erb
<svg class="icon icon-large" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
  <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"/>
</svg>
```

### Eligiendo el estilo de un ícono

Los íconos Heroicons oficiales tienen compatibilidad con dos diferentes estilos. En [heroicons.com](https://heroicons.com) ellos se refieren a estos iconos como mediano y pequeño. Los iconos medianos tienen un contorno sin relleno. Los pequeños son iconos sólidos con relleno.

De tras de escenas, el oficial [Heroicon repo](https://github.com/tailwindlabs/heroicons) hace referencia a los iconos medianos como iconos con contorno. A los pequeños como iconos sólidos. Esas convenciones de nombre tienen más sentido para mí que mediano vs pequeño ya que estos íconos se les puede cambiar el tamaño con CSS.

De cualquier manera...

Tú puedes usar la opción `style` para personalizar el estilo del icono. Hay dos valores válidos:

* `:solid` - Esto es el valor predeterminado. Esto dibuja un ícono sólido (se refiere a pequeño en) [heroicons.com](https://heroicons.com))
* `:outline` - Esto dibujara un icono con contorno (se refiere a un ícono mediano en)  [heroicons.com](https://heroicons.com))

Tú puedes usar `style` para cambiarlo y poner contorno en cualquier versión de ícono.

```erb
<%= heroicon('user', style: :outline, class_name: 'icon icon-large') %>
```

Esto incrustará el siguiente código HTML para dibujar el ícono:

```erb
<svg class="icon icon-large" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"/>
</svg>

```

## Licencia
Esta gema esta disponible como código abierto bajo los términos de [MIT License](https://opensource.org/licenses/MIT).
