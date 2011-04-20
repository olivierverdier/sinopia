Color scheme based on the `sienna colour scheme by Georg Dahn`_.

.. _sienna colour scheme by Georg Dahn: http://www.vim.org/scripts/script.php?script_id=1259

Here is how it looks like in MacVim:

.. image:: https://github.com/olivierverdier/sinopia/raw/master/screenshots/light.png

This color scheme has both light and dark styles with harmonic colors
easy to distinguish. Terminals are not supported, therefore you should
only try it if you use the GUI version of Vim.

You can choose the style by adding one of the following lines to your
``.vimrc`` or ``.gvimrc`` file before sourcing the color scheme::

    let g:sinopia_style = 'dark'
    let g:sinopia_style = 'light'

If none of above lines is given, the light style is chosen.

You can switch between these styles by using the ``:Colo`` command, like

::

    :Colo dark or :Colo light (many thanks to Pan Shizhu).

