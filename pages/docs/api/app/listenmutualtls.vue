<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - ListenMutualTLS</H1>
            <P> <B>ListenMutualTLS</B> serves HTTPs requests from the given address using <B>certFile</B>, <B>keyFile</B>
                and
                clientCertFile are
                the paths to TLS certificate and key file. </P>
            <Code path="/snippets/app-listenmutualtls-1" />
            <P>
                Example implementation of <B>ListenMutualTLS</B>
            </P>
            <Code path="/snippets/app-listenmutualtls-2" />
            <P>
                Using <Tag>ListenMutualTLS</Tag> defaults to the following config ( use <Tag>Listener</Tag> to provide your
                own config )
            </P>
            <Code path="/snippets/app-listenmutualtls-3" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - ListenMutualTLS";
const description = "ListenMutualTLS serves HTTPs requests from the given address using certFile, keyFile and clientCertFile are the paths to TLS certificate and key file. ";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
