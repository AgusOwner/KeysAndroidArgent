.class public final synthetic Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/UnknownElement;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/UnknownElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/UnknownElement;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/attribute/BaseIfAttribute$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/UnknownElement;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/attribute/BaseIfAttribute;->lambda$getParams$2(Lorg/apache/tools/ant/UnknownElement;Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
