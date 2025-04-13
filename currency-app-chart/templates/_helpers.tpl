{{- define "currency-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "currency-app.labels" -}}
app.kubernetes.io/name: {{ .Values.app.name | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end -}}

{{- define "currency-app.selectorLabels" -}}
app.kubernetes.io/name: {{ .Values.app.name | quote }}
{{- end -}}
