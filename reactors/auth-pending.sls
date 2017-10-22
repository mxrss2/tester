minion_remove:
    wheel.key.delete:
        - args: 
            - match: {{data['id'] }}

minion_add:
    wheel.key.accept:
        - args:
            - match: {{ data['id'] }}