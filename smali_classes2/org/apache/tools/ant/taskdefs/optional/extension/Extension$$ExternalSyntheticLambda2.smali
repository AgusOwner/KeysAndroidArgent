.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/jar/Attributes;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->lambda$getAvailable$0(Ljava/util/jar/Attributes;)Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p1

    return-object p1
.end method
