.class public final synthetic Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda3;->f$0:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda3;->f$0:Ljava/util/Optional;

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/PropertySet;->lambda$iterator$7(Ljava/util/Optional;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/Resource;

    move-result-object p1

    return-object p1
.end method
