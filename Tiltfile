load('ext://restart_process', 'docker_build_with_restart')

docker_build_with_restart('katya-operator', '.', 
    dockerfile='Dockerfile',
    entrypoint='/go-merge merge',
    live_update=[
        run('--chown=1001:0 --from=playbooks/ ${HOME}/playbooks/ .'),
    ]
)
k8s_yaml('katya-test-operator.yaml')
