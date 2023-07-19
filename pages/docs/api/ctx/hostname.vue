<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P> Returns the hostname derived from the Host HTTP header. </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-1`" />
            <P>
                Example implementation of <B>{{ name }}</B>
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-2`" />
            <div class="alert alert-info mt-6">
                <Icon icon="info" />
                <span>
                    Returned value is only valid within the handler. Do not
                    store any references. Make copies or use the
                    <B>Immutable</B>
                    setting instead.
                </span>
                <nuxtLink to="/docs/welcome/zero-allocation" class="btn">
                    Learn more
                </nuxtLink>
            </div>
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const name = "Hostname";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description = "Returns the hostname derived from the Host HTTP header.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
