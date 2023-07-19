<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - App</H1>
            <P>
                Returns the *App reference so you could easily access all
                application settings.
            </P>
            <Code path="/snippets/ctx-app-1" />
            <P> Example implementation of <B>App</B> </P>
            <Code path="/snippets/ctx-app-2" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🧠 Ctx - App";
const description =
    "Returns the *App reference so you could easily access all application settings.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
