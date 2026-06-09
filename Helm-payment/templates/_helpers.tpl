{{- define "backend.selectorLabels" -}}
name: {{ .Values.component.name }}
tier: backend
{{- end -}}

{{- define "backend.labels" -}}
name: {{ .Values.component.name }}
project: {{ .Values.component.namespace }}
environment: {{ .Values.component.environment }}
tier: backend
{{- end -}}

{{- define "backend.configChecksum" -}}
{{ include (print $.Template.BasePath "/configmap.yaml") . }}
{{- end -}}