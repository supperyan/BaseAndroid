package com.yecal.qianding.utils;

import android.os.Handler;
import android.os.Looper;

import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ThreadUtils {

	private static Handler handler;

	private static ExecutorService _globalQueue;

	protected static ExecutorService globalQueue() {
		if (_globalQueue == null) {
			if (_globalQueue == null) {
				_globalQueue = Executors.newCachedThreadPool();
			}
		}
		return _globalQueue;
	}

	public static boolean isMainThread() {
		return Looper.getMainLooper().getThread() == Thread.currentThread();
	}

	public static void sleep(long time) {
		try {
			Thread.sleep(time);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	public static void runOnWorkThread(Runnable runnable) {
		runOnWorkThread(globalQueue(), runnable);
	}

	public static void runOnWorkThread(ExecutorService service, Runnable runnable) {
		service.submit(runnable);
	}

	public static void runOnUiThread(Runnable r) {

		if (Thread.currentThread() == Looper.getMainLooper()
				.getThread()) {
			r.run();
			return;
		}

		if (handler == null) {
			handler = new Handler(Looper.getMainLooper());
		}
		boolean success = handler.post(r);
		// a hack
		while (!success) {
			handler = null;
			runOnUiThread(r);
		}
	}

	public static void runOnWorkThreadWithParams(ParamsRunnable r, Object ... params) {
		r.setParams(params);
		runOnWorkThread(r);
	}

	public static void runOnWorkThreadWithParams(ExecutorService service, ParamsRunnable r, Object ... params) {
		r.setParams(params);
		runOnWorkThread(service, r);
	}

	public static void runOnUiThreadWithParams(ParamsRunnable r, Object ... params) {
		r.setParams(params);
		runOnUiThread(r);
	}

	@SuppressWarnings("hiding")
	public static <T> void runOnWorkThreadWithParam(ParamRunnable<T> r, T param) {
		r.setParam(param);
		runOnWorkThread(r);
	}

	@SuppressWarnings("hiding")
	public static <T> void runOnWorkThreadWithParam(ExecutorService service, ParamRunnable<T> r, T param) {
		r.setParam(param);
		runOnWorkThread(service, r);
	}

	@SuppressWarnings("hiding")
	public static <T> void runOnUiThreadWithParam(ParamRunnable<T> r, T param) {
		r.setParam(param);
		runOnUiThread(r);
	}
	
	@SuppressWarnings("hiding")
	public static abstract class ParamRunnable<T> implements Runnable {

		private T param;
		
		protected void setParam(T param) {
			this.param = param;
		}
		
		@Override
		public void run() {
			this.runWithParam(this.param);
		}

		public abstract void runWithParam(T param);
	}
	
	public static abstract class ParamsRunnable implements Runnable {

		private ArrayList<Object> params;
		
		protected void setParams(Object ... params) {
			this.params = new ArrayList<Object>();
			for (Object param : params) {
				this.params.add(param);
			}
		}
		
		@Override
		public void run() {
			this.runWithParams(this.params);
		}
		
		public abstract void runWithParams(ArrayList<Object> params);
	}
}
