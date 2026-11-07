.class public final synthetic Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/stream/Stream$Builder;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Stream$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda2;->f$0:Ljava/util/stream/Stream$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticLambda2;->f$0:Ljava/util/stream/Stream$Builder;

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-interface {v0, p1}, Ljava/util/stream/Stream$Builder;->add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;

    return-void
.end method
