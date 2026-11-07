.class public final synthetic Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda8;->f$0:[B

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda8;->f$0:[B

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->lambda$toObject$2([BI)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
