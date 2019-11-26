.class public interface abstract Lbutterknife/Unbinder;
.super Ljava/lang/Object;
.source "Unbinder.java"


# static fields
.field public static final EMPTY:Lbutterknife/Unbinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lbutterknife/Unbinder$1;

    invoke-direct {v0}, Lbutterknife/Unbinder$1;-><init>()V

    sput-object v0, Lbutterknife/Unbinder;->EMPTY:Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public abstract unbind()V
.end method
