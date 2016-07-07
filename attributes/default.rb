default['rbenv']['user_installs'] = [
  { 
    'user'    => 'vagrant',
    'rubies'  => ['2.1.2'],
    'global'  => '2.1.2',
    'gems'    => {
      '2.1.2'    => [
        { 'name' => 'bundler' },
        { 'name' => 'rake' }
      ]
    }
  }
]