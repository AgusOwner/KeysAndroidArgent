.class public final synthetic Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/Main;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/Main;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/Main;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/Main;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Main;->lambda$loadPropertyFiles$3$org-apache-tools-ant-Main(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
