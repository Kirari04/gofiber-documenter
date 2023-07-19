<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P>
                Returns *fasthttp.RequestCtx that is compatible with the
                context.Context interface that requires a deadline, a
                cancellation signal, and other values across API boundaries.
            </P>
            <div class="alert alert-info mb-6">
                <Icon icon="info" />
                <span>
                    Please read the Fasthttp Documentation for more information.
                </span>
                <Ref
                        href="https://pkg.go.dev/github.com/valyala/fasthttp?tab=doc"
                        :blank="true"
                    >
                        <span class="btn">Read More</span>
                    </Ref>
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
const name = "Context";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description =
    "Returns *fasthttp.RequestCtx that is compatible with the context.Context interface that requires a deadline, a cancellation signal, and other values across API boundaries.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
