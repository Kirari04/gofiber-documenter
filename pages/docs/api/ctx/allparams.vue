<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - AllParams</H1>
            <P>
                Params is used to get all route parameters. Using Params method
                to get params.
            </P>
            <Code path="/snippets/ctx-allparams-1" />
            <P> Example implementation of <B>AllParams</B> </P>
            <Code path="/snippets/ctx-allparams-2" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🧠 Ctx - AllParams";
const description =
    "Params is used to get all route parameters. Using Params method to get params.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
