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
    {{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
    {{- end }}
    
    {{/*
    Return common labels
    */}}
    {{- define "comfyui.labels" -}}
    app.kubernetes.io/name: {{ include "comfyui.name" . }}
    app.kubernetes.io/instance: {{ .Release.Name }}
    app.kubernetes.io/version: {{ .Chart.AppVersion }}
    app.kubernetes.io/managed-by: {{ .Release.Service }}
    {{- end }}
    
    {{/*
    Selector labels
    */}}
    {{- define "comfyui.selectorLabels" -}}
    app.kubernetes.io/name: {{ include "comfyui.name" . }}
    app.kubernetes.io/instance: {{ .Release.Name }}
    {{- end }}
    
    {{/*
    ComfyUI specific name
    */}}
    {{- define "comfyui.comfyuiName" -}}
    {{ include "comfyui.fullname" . }}-comfyui
    {{- end }}
    
    {{/*
    Filebrowser specific name
    */}}
    {{- define "comfyui.filebrowserName" -}}
    {{ include "comfyui.fullname" . }}-filebrowser
    {{- end }}
    
    {{/*
    Ingress annotations
    */}}
    {{- define "comfyui.ingressAnnotations" -}}
    {{- with .Values.comfyui.ingress.annotations }}
    {{ toYaml . }}
    {{- end }}
    {{- end }}
    