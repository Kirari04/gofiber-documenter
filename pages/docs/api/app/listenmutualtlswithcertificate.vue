<template>
    <div class="flex flex-col-reverse md:flex-row">
        <div class="flex flex-col">
            <H1>🚀 App - ListenMutualTLSWithCertificate</H1>
            <P> ListenMutualTLSWithCertificate serves HTTPs requests from the given address using certFile, keyFile and
                clientCertFile are the paths to TLS certificate and key file. </P>
            <Code path="/snippets/app-listenmutualtlswithcertificate-1" />
            <P>
                Example implementation of <B>ListenMutualTLSWithCertificate</B>
            </P>
            <Code path="/snippets/app-listenmutualtlswithcertificate-2" />
            <P>
                Using <Tag>ListenMutualTLSWithCertificate</Tag> defaults to the following config ( use <Tag>Listener</Tag>
                to provide your own
                config )
            </P>
            <Code path="/snippets/app-listenmutualtlswithcertificate-3" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - ListenMutualTLSWithCertificate";
const description = "ListenMutualTLSWithCertificate serves HTTPs requests from the given address using certFile, keyFile and clientCertFile are the paths to TLS certificate and key file.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
