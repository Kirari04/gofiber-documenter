<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>📦 Fiber - IsChild</H1>
            <P>
                IsChild determines if the current process is a result of
                Prefork.
            </P>
            <Code path="/snippets/fiber-ischild-1" />
            <P> Example </P>
            <Code path="/snippets/fiber-ischild-2" />
        </div>
        <SubMenu :menu-items="subMenuFiber" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuFiber" />
</template>

<script lang="ts" setup>
const title = "Fiber | 📦 Fiber - New";
useSeoMeta({
    title: title,
    ogTitle: title,
});
</script>
