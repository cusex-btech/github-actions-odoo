{{- define "odoo.labels" -}}
app: {{ .Values.app.odoolabels }}
{{- end -}}

{{- define "postgres.labels" -}}
app: {{ .Values.app.postgreslabels }}
{{- end -}}