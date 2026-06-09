{{- define "frontend.selectorLabels" -}}
name: {{ .Values.component.name }}
tier: frontend
{{- end -}}

{{- define "frontend.labels" -}}
name: {{ .Values.component.name }}
project: {{ .Values.component.namespace }}
environment: {{ .Values.component.environment }}
tier: frontend
{{- end -}}

{{- define "frontend.configChecksum" -}}
{{ include (print $.Template.BasePath "/configmap.yaml") . }}
{{- end -}}