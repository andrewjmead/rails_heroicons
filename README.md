# Rails Heroicons
Use icons from [heroicons.com](https://heroicons.com) in your Rails applications.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'rails_heroicons', '~> 0.4.0'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install rails_heroicons
```

## Usage

### Adding an icon

Before you can add an icon, you need to find the icons name. Refer to [heroicons.com](https://heroicons.com) for a full list of icon names.

This gem provides you with a single new Rails helper called `heroicon`. You can use `heroicon` in your templates to add an icon:

```erb
<%= heroicon('user') %>
```

This will embed the following HTML to render the icon:

```erb
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
  <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"/>
</svg>
```

### Adding a class

You can add a class to the SVG to target the icon for styling. This is done using the `class_name` option:

```erb
<%= heroicon('user', class_name: 'icon icon-large') %>
```

This will embed the following HTML to render the icon:

```erb
<svg class="icon icon-large" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
  <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"/>
</svg>
```

### Picking an icon style

The official Heroicons icons support two different styles. On [heroicons.com](https://heroicons.com) they refer to these as medium and small. Medium icons are outlined icons with no fill. Small icons are solid icons with a solid fill. 

Behind the scenes, the offical [Heroicon repo](https://github.com/tailwindlabs/heroicons) refers to medium icons as outlined icons. Small icons are referred to as solid icons. That naming convention makes more sense to me than medium vs small as these icons could be resized with CSS anyway. 

Anyways...

You can use the `style` option to customize the icon style. There are two valid values:

* `:solid` - This is the default value. This render a solid icon (referred to as small on [heroicons.com](https://heroicons.com))
* `:outline` - This will render an outlined icon (referred to as medium on  [heroicons.com](https://heroicons.com))

You can use `style` to switch to and outlined version of any icon:

```erb
<%= heroicon('user', style: :outline, class_name: 'icon icon-large') %>
```

This will embed the following HTML to render the icon:

```erb
<svg class="icon icon-large" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"/>
</svg>

```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
