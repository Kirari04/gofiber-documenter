<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Hooks</H1>
            <P> Hooks is a method to return hooks property. </P>
            <Code path="/snippets/app-hooks-1" />
            <div class="alert alert-info mt-6 flex">
                <Icon icon="info" />
                <span class="flex flex-col grow items-start gap-4">
                    <span>
                        Check out the
                        <B>Hooks guide</B>
                        for more.
                    </span>
                    <nuxtLink to="/guide/hooks" class="btn"
                        >Learn more</nuxtLink
                    >
                </span>
            </div>
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Hooks";
const description = "Hooks is a method to return hooks property.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
