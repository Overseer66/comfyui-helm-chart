{{/*
Return the name of the chart
*/}}
{{- define "comfyui.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Return the fully qualified app name
*/}}
{{- define "comfyui.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Return common labels as YAML
*/}}
{{- define "comfyui.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels as YAML
*/}}
{{- define "comfyui.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
ComfyUI specific name
*/}}
{{- define "comfyui.comfyuiName" -}}
{{ include "comfyui.fullname" . }}-comfyui
{{- end }}

{{/*
Ingress annotations
*/}}
{{- define "comfyui.ingressAnnotations" -}}
{{- with .Values.comfyui.ingress.annotations }}
{{ toYaml . }}
{{- end }}
{{- end }}
