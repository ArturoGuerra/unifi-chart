{{- define "name" -}}
{{ .Release.Name }}
{{- end -}}

{{- define "image" -}}
{{ printf "%s:%s" .Values.image.repository .Values.image.tag }}
{{- end -}}

{{- define "pvc" -}}
{{ default .Release.Name .Values.persistence.existingClaim }}
{{- end -}}

{{- define "tls-secret" -}}
{{ default (printf "%s-tls" .Release.Name) .Values.tls.secretName }}
{{- end -}}