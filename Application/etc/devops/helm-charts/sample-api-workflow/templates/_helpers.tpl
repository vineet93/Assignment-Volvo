{{- define "App.Name" -}}
{{- lower (trimSuffix "-" (trunc 63 .Release.Name)) }}
{{- end }}

{{- define "App.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "App.labels" -}}
helm.sh/chart: {{ include "App.chart" . }}
{{ include "App.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "App.selectorLabels" -}}
app.kubernetes.io/name: {{ include "App.Name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "App.Deployment.Name" }}
{{- lower (nospace (cat .Release.Name "-deployment")) }}
{{- end }}

{{- define "App.Service.Name" }}
{{- lower (nospace (cat .Release.Name "-service")) }}
{{- end }}

{{- define "App.ConfigMap.Name" }}
{{- lower (nospace (cat .Release.Name "-configMap")) }}
{{- end }}

{{- define "App.RegistrySecret.Name" }}
{{- lower (nospace (cat .Release.Name "-registrySecrets")) }}
{{- end }}

{{- define "App.AppSecret.Name" }}
{{- lower (nospace (cat .Release.Name "-appSecrets")) }}
{{- end }}

{{- define "App.Ingress.Name" }}
{{- lower (nospace (cat .Release.Name "-ingress")) }}
{{- end }}

{{- define "App.Configuration.Directory" }}
{{- nospace (cat .Values.appBaseLocation "/" .Values.Environment "/config") }}
{{- end }}

{{- define "imagePullSecret" }}
{{- with .Values.imageCredentials }}
{{- printf "{\"auths\":{\"%s\":{\"username\":\"%s\",\"password\":\"%s\",\"auth\":\"%s\"}}}" .registry .username .password (printf "%s:%s" .username .password | b64enc) | b64enc }}
{{- end }}
{{- end }}

{{- define "App.RelativePath" }}
{{- nospace (cat "/" .Values.application.relativePath "(/|$)(.*)") }}
{{- end }}