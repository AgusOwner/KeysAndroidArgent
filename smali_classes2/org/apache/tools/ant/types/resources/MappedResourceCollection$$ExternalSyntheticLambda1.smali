.class public final synthetic Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda1;
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
    .locals 1

    new-instance v0, Lorg/apache/tools/ant/util/MergingMapper;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/util/MergingMapper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
