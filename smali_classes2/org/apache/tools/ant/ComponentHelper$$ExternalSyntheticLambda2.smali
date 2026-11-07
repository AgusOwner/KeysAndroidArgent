.class public final synthetic Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/ComponentHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/ComponentHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/ComponentHelper;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/ComponentHelper;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->lambda$getTaskDefinitions$0$org-apache-tools-ant-ComponentHelper(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
