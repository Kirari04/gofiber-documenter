<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Handler</H1>
            <P>
                Handler returns the server handler that can be used to serve
                custom *fasthttp.RequestCtx requests.
            </P>
            <Code path="/snippets/app-handler-1" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Handler";
const description =
    "Handler returns the server handler that can be used to serve custom *fasthttp.RequestCtx requests.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
