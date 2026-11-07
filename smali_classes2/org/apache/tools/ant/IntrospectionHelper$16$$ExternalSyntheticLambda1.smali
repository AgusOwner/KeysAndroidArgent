.class public final synthetic Lorg/apache/tools/ant/IntrospectionHelper$16$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper$16$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper$16$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Throwable;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/IntrospectionHelper$16;->lambda$toTargetType$0(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
