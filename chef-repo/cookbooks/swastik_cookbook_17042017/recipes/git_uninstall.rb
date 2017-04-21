if node['platform'] == 'windows'
  execute 'uninstall_git' do
    cwd "C:/Program Files/GIT"
    command "unins000.exe /SILENT"
end
end
