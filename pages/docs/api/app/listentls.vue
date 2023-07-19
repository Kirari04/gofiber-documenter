<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - ListenTLS</H1>
            <P>
                ListenTLS serves HTTPs requests from the given address using
                certFile and keyFile paths to as TLS certificate and key file.
            </P>
            <Code path="/snippets/app-listentls-1" />
            <P>Example implementation of <B>ListenTLS</B></P>
            <Code path="/snippets/app-listentls-2" />
            <P>
                Using <B>ListenTLS</B> defaults to the following config ( use Listener
                to provide your own config )
            </P>
            <Code path="/snippets/app-listentls-3" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - ListenTLS";
const description =
    "ListenTLS serves HTTPs requests from the given address using certFile and keyFile paths to as TLS certificate and key file.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
