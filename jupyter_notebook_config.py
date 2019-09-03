import os
ENV = os.environ

c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.open_browser = False
c.NotebookApp.notebook_dir = '/workspace'
c.NotebookApp.token = ENV.get('JUPYTER_TOKEN')
c.NotebookApp.allow_root = True
c.InteractiveShell.ast_node_interactivity = "all"  # prints ALL output not only last
