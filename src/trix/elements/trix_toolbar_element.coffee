{cloneFragment} = Trix

Trix.registerElement "trix-toolbar",
  defaultCSS: """
    %t {
      white-space: nowrap;
    }

    %t [data-trix-dialog] {
      display: none;
    }

    %t [data-trix-dialog][data-trix-active] {
      display: block;
    }

    %t [data-trix-dialog] [data-trix-input][data-trix-validate]:invalid {
      background-color: #ffdddd;
    }
  """

  createdCallback: ->
    if @innerHTML is ""
      @appendChild(cloneFragment(Trix.config.toolbar.content))
