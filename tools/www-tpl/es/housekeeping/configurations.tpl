{% include "housekeeping/base/header.tpl" %}
  <body>
    {% set configurationsActive = " active" %}
	{% include "housekeeping/base/navigation.tpl" %}
     <h1 class="mt-4">Editar configuraciones</h1>
		{% include "housekeeping/base/alert.tpl" %}
		<p>Edite toda la configuración que se encuentra en el hotel.</p>
          <div class="table-responsive">
		    <form method="post">
            <table class="table table-striped">
              <thead>
                <tr>
				  <th>Nombre</th>
				  <th>Valor</th>
				  <th></th>
                </tr>
              </thead>
              <tbody>
				{% for config in configs %}
                <tr>
				  <td>{{ config.getKey() }}</td>
				  <td>
						<input type="text" name="{{ config.getKey() }}" class="form-control" id="searchFor" value="{{ config.getValue() }}">
				  </td>
                  </tr>
			   {% endfor %}
              </tbody>
            </table>
			<div class="form-group"> 
				<button type="submit" class="btn btn-info">Guardar la configuración</button>
			</div>
		</form>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"></script>
  <script src="https://blackrockdigital.github.io/startbootstrap-simple-sidebar/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>
</body>
</html>