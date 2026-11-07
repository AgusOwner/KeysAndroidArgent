.class public final synthetic Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/PropertyHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/PropertyHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda8;->f$0:Lorg/apache/tools/ant/PropertyHelper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda8;->f$0:Lorg/apache/tools/ant/PropertyHelper;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/PropertySet;->lambda$getEffectiveProperties$3(Lorg/apache/tools/ant/PropertyHelper;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object p1

    return-object p1
.end method
