<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Route Handlers</H1>
            <P> Registers a route bound to a specific HTTP method. </P>
            <Code path="/snippets/app-static-1" />
            <P>Example with POST & GET handler</P>
            <Code path="/snippets/app-static-2" />
            <P>
                <B>Use</B> can be used for middleware packages and prefix
                catchers. These routes will only match the beginning of each
                path i.e. <Tag>/john</Tag> will match <Tag>/john/doe</Tag>,
                <Tag>/johnnnnn</Tag> etc
            </P>
            <Code path="/snippets/app-static-3" />
            <P>Simple example with <B>Use</B></P>
            <Code path="/snippets/app-static-4" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Route Handlers";
const description = "Registers a route bound to a specific HTTP method.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
