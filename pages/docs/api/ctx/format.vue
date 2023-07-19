<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P>
                Performs content-negotiation on the Accept HTTP header. It uses
                <NuxtLink to="/docs/api/ctx/accepts">Accepts</NuxtLink> to
                select a proper format.
            </P>
            <div class="alert alert-info mb-6">
                <Icon icon="info" />
                <span>
                    If the header is not specified or there is no proper format,
                    text/plain is used.
                </span>
            </div>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-1`" />
            <P>
                Example implementation of <B>{{ name }}</B>
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-2`" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const name = "Format";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description =
    "Performs content-negotiation on the Accept HTTP header. It uses Accepts to select a proper format.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
