name: Update Artifacts for version using reusable matrix

sources:
{{- range $key, $artifact := .artifacts }}
  {{- if $artifact.updatecli_matrix_target }}
  src_{{ $key }}:
    name: {{ $artifact.name }}
    kind: maven
    spec:
      repository: nexus.alfresco.com/nexus/repository/{{ $artifact.repository }}
      groupid: {{ $artifact.group }}
      artifactid: {{ $artifact.name}}
  {{- end }}
{{- end }}

targets:
{{- range $key, $artifact := .artifacts }}
  {{- if $artifact.updatecli_matrix_target }}
  yml_{{ $key }}:
    name: artifacts yml
    kind: yaml
    sourceid: src_{{ $key }}
    spec:
      file: "artifacts-23.yaml"
      key: "$.artifacts.{{ $key }}.version"
  {{- end }}
{{- end }}
